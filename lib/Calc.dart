
  late List listNumForAddSub;
  late List listAddSubOpr;

  List assistant1=[];
  List<List> listOfListNumForMultDiv = [];
  List<List> listMultDivOpr = [];
  bool thereIsMultAndDiv1 = false;
  bool thereIsMultAndDiv2 = false;
  late List listNumForMultDiv;
  late List assistant2;
  List indexMultOrDiv = [];

  void divParentEquationIntoAdditionAndSubtraction(equation) {
    listNumForAddSub = equation!.split(RegExp(r'[-+]')); // hadi hiya la liste li rah nhasbo mnha f tali
    listAddSubOpr = equation!.split(RegExp(r"[*/.]?\d+")); //tbaynlna win ljamee w win tareh

    listAddSubOpr = addOprToList(listAddSubOpr);
  }

//---------------------------------------------------

  void determineMultAndDivOperationAndItsLocation() {
    for (int i = 0; i < listNumForAddSub.length; i++) {
      listNumForMultDiv = listNumForAddSub[i].split('');
      // print(z);
      for (int j = 0; j < listNumForMultDiv.length; j++) {
        if (listNumForMultDiv[j] == '*' || listNumForMultDiv[j] == '/') {
          thereIsMultAndDiv1 = true;
          indexMultOrDiv.add(i);
        }

        if (thereIsMultAndDiv1) {
            listNumForMultDiv = listNumForAddSub[i].split(RegExp(r'[/*]'));
            assistant2 = listNumForAddSub[i].split(RegExp(r"[+-.]?\d+"));
            assistant1=[];
            for (int i = 0; i < assistant2.length; i++) {
              if (assistant2[i] == '*' || assistant2[i] == '/') {
                assistant1.add(assistant2[i]);
              }
            }
            listOfListNumForMultDiv.add(listNumForMultDiv);
            listMultDivOpr.add(assistant1);
          thereIsMultAndDiv1 = false;
          break;
        }
      }

    }

  }




  //---------------------------------------------------------------------------------

  String solveOverallEquation() {
    int p=0;
    for (int i = 0; i < listAddSubOpr.length; i++) {
      switch (listAddSubOpr[i]) {
        case "+":
          listNumForAddSub[i + 1] = (add(double.parse(listNumForAddSub[i]), double.parse(listNumForAddSub[i + 1]))).toString();
          break;
        case "-":
          listNumForAddSub[i + 1] = (str(double.parse(listNumForAddSub[i]), double.parse(listNumForAddSub[i + 1]))).toString();
      }
      p = i+1;
    }
    return '${listNumForAddSub[p]}';
  }


  //------------------------------------------------------------

  List addOprToList(L) {
    List u = [];
    for (int i = 0; i < listAddSubOpr.length; i++) {
      if (listAddSubOpr[i] == '+' || listAddSubOpr[i] == '-') {
        u.add(listAddSubOpr[i]);
      }
    }
    return u;
  }
  //------------------------------------------------------------------

  void solvingMultiplicationAndDivisionEquations(){int a=0;
  for (int i = 0; i < listOfListNumForMultDiv.length; i++) {
    for (int j = 0; j < listOfListNumForMultDiv[i].length-1; j++) {

      switch (listMultDivOpr[i][j]) {
        case "*":
          listOfListNumForMultDiv[i][j+1] =
              (mult(double.parse(listOfListNumForMultDiv[i][j]), double.parse(listOfListNumForMultDiv[i][j+1])))
                  .toString(); break;
        case "/":
          listOfListNumForMultDiv[i][j+1]  =
              (div(double.parse(listOfListNumForMultDiv[i][j]), double.parse(listOfListNumForMultDiv[i][j+1])))
                  .toString();
        default:
      }

      a=j;
    }
    listNumForAddSub[indexMultOrDiv[i]]=listOfListNumForMultDiv[i][a+1];
  }

  }
  //------------------------------------------------------------

  double add(double x, double y) {
    return x + y;
  }

  double str(double x, double y) {
    return x - y;
  }

  double mult(double x, double y) {
    return x * y;
  }

  double div(double x, double y) {
    return x / y;
  }

