package My_LinkedList;
public class MyLinkedList{

    public Node front;
    public class Node{
        int data;
        Node next;
        
        public Node(int data, Node next){
            this.data = data;
            this.next = next;
        }
    }

    public void add(int x){

        if(this.front == null){
            this.front = new Node(x,null);
        }
        else{
            Node cur = this.front;
            while(cur.next!=null){
                cur = cur.next;
            }
            cur.next = new Node (x,null);
        }
    }

    public void swap(){

        Node cur = this.front.next; //2

        this.front.next = cur.next; // 1 -> 3

        cur.next = this.front; // 2 -> 1

        this.front = cur;
        cur = cur.next;
        
    }    
    public void display(){
        Node n = this.front;
        while(n!=null){
            System.out.print(n.data);
            n = n.next;
        }
        System.out.println();
    }

    public static void main(String[] args) {
        MyLinkedList ll = new MyLinkedList();
        ll.add(1);
        ll.add(2);
        ll.add(3);
        ll.add(4);
        ll.display();
        ll.swap();
        ll.display();        
    }
    
}
