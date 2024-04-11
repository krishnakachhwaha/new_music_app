import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorPayment extends StatefulWidget {
  const RazorPayment({super.key});
  @override
  State<RazorPayment> createState() => _RazorPaymentState();
}

class _RazorPaymentState extends State<RazorPayment> {
  late Razorpay _razorPay;
  TextEditingController amController = TextEditingController();

  openCheckOut(amount) async {
    amount = amount * 100;
    var options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': amount,
      'name': 'harsh',
      'prefill': {'contact': '1234567890', 'email': 'test@gmail.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
    try {
      _razorPay.open(options);
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }

  handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: 'Payment Successful ' + response.paymentId!,
        toastLength: Toast.LENGTH_SHORT);
  }

  handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: 'Payment Failed ' + response.message!,
        toastLength: Toast.LENGTH_SHORT);
  }

  handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: 'External Wallet ' + response.walletName!,
        toastLength: Toast.LENGTH_SHORT);
  }

  @override
  void dispose() {
    super.dispose();
    _razorPay.clear();
  }

  @override
  void initState() {
    super.initState();
    _razorPay = Razorpay();
    _razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                if (amController.text.toString().isNotEmpty) {
                  setState(() {
                    int amount = int.parse(amController.text.toString());
                    openCheckOut(amount);
                  });
                }
              },
              child: Text('Make Payment'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(330, 50),
                backgroundColor: Colors.green,
                elevation: 8,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
