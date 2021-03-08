import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  //region Variables
  int totalPrice = 0;
  List<MonthModel> monthList = [
    MonthModel(
        isSelected: false,
        monthPair: 'Apr-Jun',
        price: 3000,
        date: '10/04/2019'),
    MonthModel(
        isSelected: false,
        monthPair: 'Jul-Sep',
        price: 3000,
        date: '31/10/2019'),
    MonthModel(
        isSelected: false,
        monthPair: 'Oct-Dec',
        price: 3000,
        date: '31/12/2020'),
    MonthModel(
        isSelected: false,
        monthPair: 'Jan-Mar',
        price: 3000,
        date: '10/01/2020'),
  ];

  //endregion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              nameView(),
              SizedBox(height: Get.height * 0.02),
              totalAmountView(),
              SizedBox(height: Get.height * 0.02),
              feePeriodView(),
              SizedBox(height: Get.height * 0.02),
              tableView(),
              SizedBox(height: Get.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  nameView() {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        color: Colors.amberAccent,
        width: Get.width * .9,
        height: Get.height * 0.035,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Paying Fee (Kunj 1-A)",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }

  totalAmountView() {
    return Container(
      margin: EdgeInsets.only(left: Get.width * 0.025),
      padding: EdgeInsets.only(left: Get.width * 0.025),
      width: Get.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total Amount",
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            " Rs. $totalPrice/",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          RaisedButton(
            color: Colors.teal,
            onPressed: () {},
            child: Text(
              "Pay fee",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  feePeriodView() {
    return Container(
      margin: EdgeInsets.all(9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fee Periods:",
          ),
          GridView.builder(
            itemCount: monthList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return monthViewItem(monthList[index]);
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 5,
              crossAxisSpacing: 4,
              mainAxisSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }

  monthViewItem(MonthModel model) {
    return Row(
      children: [
        Checkbox(
          value: model.isSelected,
          onChanged: (val) {
            setState(() {
              model.isSelected = val;
              if (val)
                totalPrice += model.price;
              else
                totalPrice -= model.price;
            });
          },
        ),
        Text(model.monthPair),
      ],
    );
  }

  tableView() {
    return Table(
      // defaultColumnWidth: FixedColumnWidth(100.0),
      border: TableBorder.all(
          color: Colors.black, style: BorderStyle.solid, width: 2),
      children: [
        TableRow(children: [
          tableCellText('Account Heads', true, null, false),
          tableCellText('Due Date', true, null, false),
          tableCellText('Due Amount', true, null, false),
          tableCellText('Details', true, null, false),
        ]),
        monthRow(monthList[0]),
        monthRow(monthList[1]),
        monthRow(monthList[2]),
        monthRow(monthList[3]),
      ],
    );
  }

  monthRow(MonthModel model) {
    return TableRow(children: [
      tableCellText(model.monthPair, false, null, false),
      tableCellText(model.date, false, null, false),
      tableCellText(model.price.toString(), false, null, false),
      // ignore: missing_return
      tableCellText('', false, () {
        //todo open details here
        print('Hi ${model.monthPair}');
      }, true),
    ]);
  }

  tableCellText(text, isHeader, Function onClick, needDetailClick) {
    return TableCell(
      child: Container(
        width: isHeader ? 80 : 30,
        height: isHeader ? 80 : 30,
        color: isHeader ? Colors.amberAccent : Colors.transparent,
        child: !isHeader && needDetailClick
            ? GestureDetector(onTap: onClick, child: Icon(Icons.menu))
            : Center(
                child: Text(
                  text,
                  style: isHeader
                      ? TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )
                      : TextStyle(
                          color: Colors.black,
                        ),
                ),
              ),
      ),
    );
  }

  calculatePrice() {
    totalPrice = 0;
    monthList.forEach((element) {
      if (element.isSelected) {
        setState(() {
          totalPrice += element.price;
        });
      } else {
        setState(() {
          totalPrice -= element.price;
        });
      }
    });
  }
}

class MonthModel {
  String monthPair;
  int price;
  bool isSelected;
  String date;

  MonthModel({this.isSelected, this.monthPair, this.price, this.date});
}
