use utf8;
package Crawler::DB::Schema::Result::Song;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Crawler::DB::Schema::Result::Song

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 TABLE: C<song>

=cut

__PACKAGE__->table("song");

=head1 ACCESSORS

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 author

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 download

  data_type: 'text'
  is_nullable: 1

=head2 publisher

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 status

  data_type: 'varchar'
  default_value: 'undo'
  is_nullable: 1
  size: 20

=head2 website_id

  data_type: 'integer'
  is_nullable: 1

=head2 url

  data_type: 'text'
  is_nullable: 1

=head2 url_md5

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 album

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 hot_num

  data_type: 'integer'
  is_nullable: 1

=head2 page_id

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 artist_id

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "author",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "download",
  { data_type => "text", is_nullable => 1 },
  "publisher",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "type",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "status",
  {
    data_type => "varchar",
    default_value => "undo",
    is_nullable => 1,
    size => 20,
  },
  "website_id",
  { data_type => "integer", is_nullable => 1 },
  "url",
  { data_type => "text", is_nullable => 1 },
  "url_md5",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "album",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "hot_num",
  { data_type => "integer", is_nullable => 1 },
  "page_id",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "artist_id",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</url_md5>

=back

=cut

__PACKAGE__->set_primary_key("url_md5");


# Created by DBIx::Class::Schema::Loader v0.07035 @ 2013-09-29 22:31:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UdGHSGXQFxNAV6ab9uTNmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;