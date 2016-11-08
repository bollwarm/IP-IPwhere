use IP::IPwhere;
use IP::QQWry;
use Encode;

my $qqwry = IP::QQWry->new('QQWry.Dat');

map {print gquery($qqwry,$_)} @ARGV;

sub gquery {

my ($qqwry,$ip)=@_;
my ($base,$info) = $qqwry->query($ip);
my $result;
$result="qqwry $ip:";
$result.=decode('gbk',$base);
$result.=decode('gbk',$info)."\n";
return $result;

}

print query(\@ARGV);

$qqwry->clear;
