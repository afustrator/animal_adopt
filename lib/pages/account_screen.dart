import 'package:animal_adopt/theme.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  // height: 300,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/my-avatar.png',
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: Text.rich(
                          TextSpan(
                            text: 'Ahmad Fadillah\n',
                            style: bodyTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                text: 'Tapos, Depok\n',
                                style: bodyTextStyle.copyWith(
                                  fontSize: 16,
                                  color: accentTextColor,
                                ),
                              ),
                              TextSpan(
                                text: '085155005500',
                                style: bodyTextStyle.copyWith(
                                  fontSize: 16,
                                  color: accentTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Text(
                  'Pengaturan Akun',
                  style: bodyTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 200,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(.05),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.place_outlined,
                          size: 30,
                          color: secondaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 7,
                        child: Text.rich(
                          TextSpan(
                            text: 'Edit Alamat\n',
                            style: bodyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Atur alamat domisili anda',
                                  style: bodyTextStyle.copyWith(
                                    fontSize: 12,
                                    color: accentTextColor,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(.05),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.manage_accounts_outlined,
                          size: 30,
                          color: secondaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 7,
                        child: Text.rich(
                          TextSpan(
                            text: 'Edit Profil\n',
                            style: bodyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                      'Atur username, no. telepon, dan email anda',
                                  style: bodyTextStyle.copyWith(
                                    fontSize: 12,
                                    color: accentTextColor,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black.withOpacity(.05),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.logout_outlined,
                          size: 30,
                          color: secondaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 7,
                        child: Text(
                          'Keluar Akun',
                          style: bodyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
