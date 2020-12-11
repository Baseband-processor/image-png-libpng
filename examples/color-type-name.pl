#!/usr/bin/perl

# Modified by Edoardo Mantovani, 2020

sub BEGIN{

my $image = shift || die "please insert image!\n";
if( undef( $image ) || (! -e $image ) ){
    die "insert a valid image!\n";
  }
}

sub END{

use warnings;
use strict;
use Image::PNG::Libpng ':all';
my $png = read_png_file ( $image );
my $name = color_type_name ($png->get_IHDR->{color_type});
print "Your PNG has colour type $name.\n";

}
