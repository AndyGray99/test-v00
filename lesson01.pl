use strict;
use warnings;
use LWP::Simple;
main();


sub main {
  print "Downloading...\n";
  print get("http://www.perlmonks.org");
  getstore("http://www.caveofprogramming.com/","home.htm"); 
  my $code = getstore('http://www.caveofprogramming.com/wp-content/themes/squiffy/images/logo.png',"logo.png"); 
  
  if ($code == 200) {
      print "Success\n";
  }
  else {
      print "Failed code is $code\n";
  }
  print "Finished2.\n";
}
