use Crawler::Base -strict;
use Crawler::Invoker;
use Getopt::Long;
use File::Spec;
use IO::File;
use AnyEvent;

my $usage = <<EOF;
$0 -conf xx/crawler.conf[option] -site -debug 1
EOF

my $conf;
my $site;
my $debug;
my $feed;

GetOptions(
    "conf|c=s"  => \$conf,
    "site|s=s"  => \$site,
    "debug|d=s" => \$debug,
    "feed|s=s"  => \$feed,
) or die $usage;

die $usage if not $site;

my $c = Crawler::Invoker->new( site => $site );
$c->crawler->schema->storage->debug(1);
$c->crawler->is_debug(1) if $debug;

#$schema->storage->debugfh(IO::File->new('/tmp/trace.out', 'w');
if ($debug) {
    $c->crawler->schema->storage->debug(1);
}

$ENV{CRAWLER_LOG_PATH} = '/tmp/crawler.log' if $debug;
my $data = $c->analyse_rss($feed);
$c->crawler->save_data($data) if not $debug;

exit 0;

