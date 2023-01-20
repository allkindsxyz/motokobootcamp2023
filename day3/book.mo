module {
//Challenge 4
  public type Book = {
    title : Text;
    pages : Nat;
  };

//Challenge 5
  public query func create_book(title : Text, pages : Nat) : async Book {
    return let newBook : Book = {
      title = title;
      pages = pages;
    };
  };
}