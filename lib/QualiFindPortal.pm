package QualiFindPortal;
use Dancer2;

our $VERSION = '0.1';

# 一覧データ TODO:DBから取得
my @items = (
    { id => 1, name => '資格1',  price => 120 },
    { id => 2, name => '資格2',  price => 80  },
    { id => 3, name => '資格3',  price => 100 },
);

# ルートに一覧ページ
get '/' => sub {
    template 'qualifications.tt', { items => \@items, title => '資格一覧' };
};

true;
