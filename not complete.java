class TreeVisitor{
}

class TV {

    public int Start(){
        Tree root ;
        boolean ntb ;
        int nti ;
        System.out.println(100000000);
        v = new MyVisitor();
        nti = root.accept(v);
        ntb = root.Delete(12);
        System.out.println(root.Search(12));
        return 0 ;
    }

}


class Tree{
    Tree left ;
    Tree right;
    int key ;
    boolean has_left ;
    boolean has_right ;
    Tree my_null ;

}
class Visitor {
    Tree l ;
    Tree r ;

}
class MyVisitor extends Visitor {
}