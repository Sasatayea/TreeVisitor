class TreeVisitor{
}

class TV {

    public int Start(){
        Tree root ;
        boolean ntb ;
        int nti ;
        MyVisitor v ;


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

    public boolean Delete(int v_key){
        Tree current_node ;
        Tree parent_node ;
        boolean cont ;
        boolean found ;
        boolean ntb ;
        boolean is_root ;
        int key_aux ;

        current_node = this ;
        parent_node = this ;
        cont = true ;
        found = false ;
        is_root = true ;
        while (cont){
            key_aux = current_node.GetKey();
            if (v_key < key_aux)
                if (current_node.GetHas_Left()){
                    parent_node = current_node ;
                    current_node = current_node.GetLeft() ;
                }
                else cont = false ;
            else
            if (key_aux < v_key)
                if (current_node.GetHas_Right()){
                    parent_node = current_node ;
                    current_node = current_node.GetRight() ;
                }
                else cont = false ;
            else {
                if (is_root)
                    if (!current_node.GetHas_Right() &&
                            !current_node.GetHas_Left() )
                        ntb = true ;
                    else
                        ntb = this.Remove(parent_node,current_node);
                else ntb = this.Remove(parent_node,current_node);
                found = true ;
                cont = false ;
            }
            is_root = false ;
        }
        return found ;
    }

    public boolean Remove(Tree p_node, Tree c_node){
        boolean ntb ;
        int auxkey1 ;
        int auxkey2 ;

        if (c_node.GetHas_Left())
            ntb = this.RemoveLeft(p_node,c_node) ;
        else
        if (c_node.GetHas_Right())
            ntb = this.RemoveRight(p_node,c_node) ;
        else {
            auxkey1 = c_node.GetKey();
            auxkey2 = (p_node.GetLeft()).GetKey() ;
            if (this.Compare(auxkey1,auxkey2)) {
                ntb = p_node.SetLeft(my_null);
                ntb = p_node.SetHas_Left(false);
            }
            else {
                ntb = p_node.SetRight(my_null);
                ntb = p_node.SetHas_Right(false);
            }
        }
        return true ;
    }



    public boolean RemoveLeft(Tree p_node, Tree c_node){
        boolean ntb ;
        while (c_node.GetHas_Left()){
            ntb = c_node.SetKey((c_node.GetLeft()).GetKey());
            p_node = c_node ;
            c_node = c_node.GetLeft() ;
        }
        ntb = p_node.SetLeft(my_null);
        ntb = p_node.SetHas_Left(false);
        return true ;
    }


    public int Search(int v_key){
        Tree current_node ;
        int ifound ;
        boolean cont ;
        int key_aux ;

        current_node = this ;
        cont = true ;
        ifound = 0 ;
        while (cont){
            key_aux = current_node.GetKey();
            if (v_key < key_aux)
                if (current_node.GetHas_Left())
                    current_node = current_node.GetLeft() ;
                else cont = false ;
            else
            if (key_aux < v_key)
                if (current_node.GetHas_Right())
                    current_node = current_node.GetRight() ;
                else cont = false ;
            else {
                ifound = 1 ;
                cont = false ;
            }
        }
        return ifound ;
    }

    public boolean RecPrint(Tree node){
        boolean ntb ;

        if (node.GetHas_Left()){
            ntb = this.RecPrint(node.GetLeft());
        } else ntb = true ;
        System.out.println(node.GetKey());
        if (node.GetHas_Right()){
            ntb = this.RecPrint(node.GetRight());
        } else ntb = true ;
        return true ;
    }



}



class Visitor {
    Tree l ;
    Tree r ;



}


class MyVisitor extends Visitor {



}