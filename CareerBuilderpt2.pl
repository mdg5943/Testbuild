#
# Career Builder Test
#
use warnings;  
use strict; 

#Assume file exists 
#open my $handle, '<', 'FILE PATH';
#chomp(my @lines = <$handle>);
#close $handle;

#put data in array for processing
my @lines = ('parent1=13', '-child1=3', '-child2=6', '-child3=9', '-child4=12', 'parent2=26', '-child5=15', 'parent3=39', '-child6=18', '-child7=21');

my $equalsignposition;
my $temp_header  = '';
my $final_text = '';

foreach (@lines) {
    
    $equalsignposition = index($_, '=');
    
    if (index($_, 'parent') != -1) {
    
  #  if ($temp_header eq '' or substr($_, 0,$equalsignposition) ne substr($temp_header, 0, index($temp_header, '=')) ) {
        
        $temp_header = $_;
   #     print $temp_header . '\n';
        
        
    } else {
      
       $final_text .= substr($temp_header, 0, index($temp_header, '=')) . ' - ' . substr($_, 1, index($_, '=')) . substr($temp_header, index($temp_header, '=')+1, length($temp_header)) . '~' . substr($_, index($_, '=')+1, length($_)) . '\n';
    }
    
    
}


print $final_text;


