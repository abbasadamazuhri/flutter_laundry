import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import '../../../core/core.dart';
import '../widgets/menu_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[Colors.black, Colors.blue]),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Hi, Abbas Adam Az Zuhri',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: AppColors.white,
                            ),
                            maxLines: 2,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Assets.icons.notificationRounded.svg(),
                        ),
                      ],
                    ),
                    const SpaceHeight(24.0),
                    Container(
                      padding: const EdgeInsets.all(24.0),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          Text(
                            DateTime.now().toFormattedTime(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                              color: AppColors.primary,
                            ),
                          ),
                          Text(
                            DateTime.now().toFormattedDate(),
                            style: const TextStyle(
                              color: AppColors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                          const SpaceHeight(18.0),
                          const Divider(),
                          const SpaceHeight(30.0),
                          Text(
                            DateTime.now().toFormattedDate(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.grey,
                            ),
                          ),
                          const SpaceHeight(6.0),
                          Text(
                            '${DateTime(2024, 3, 14, 8, 0).toFormattedTime()} - ${DateTime(2024, 3, 14, 16, 0).toFormattedTime()}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SpaceHeight(24.0),
                  ])),
              Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Column(children: [
                    GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 30.0,
                        mainAxisSpacing: 30.0,
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        MenuButton(
                          label: 'Datang',
                          iconPath: Assets.icons.menu.datang.path,
                          onPressed: () {},
                        ),
                        MenuButton(
                          label: 'Pulang',
                          iconPath: Assets.icons.menu.pulang.path,
                          onPressed: () {},
                        ),
                        MenuButton(
                          label: 'Jadwal',
                          iconPath: Assets.icons.menu.jadwal.path,
                          onPressed: () {},
                        ),
                        MenuButton(
                          label: 'Izin',
                          iconPath: Assets.icons.menu.izin.path,
                          onPressed: () {},
                        ),
                        MenuButton(
                          label: 'Lembur',
                          iconPath: Assets.icons.menu.lembur.path,
                          onPressed: () {},
                        ),
                        MenuButton(
                          label: 'Catatan',
                          iconPath: Assets.icons.menu.catatan.path,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SpaceHeight(24.0),
                    Button.filled(
                      onPressed: () {
                        context.pop();
                        context.push(const SimpleBarcodeScannerPage());
                      },
                      label: 'Scan Barcode',
                      icon: Assets.icons.attendance.svg(),
                    ),
                    const SpaceHeight(24.0),
                    // Button.filled(
                    //   onPressed: () {
                    //     showBottomSheet(
                    //       backgroundColor: AppColors.white,
                    //       context: context,
                    //       builder: (context) => Container(
                    //         padding: const EdgeInsets.all(16.0),
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           mainAxisSize: MainAxisSize.min,
                    //           children: [
                    //             const SizedBox(
                    //               width: 60.0,
                    //               height: 8.0,
                    //               child: Divider(color: AppColors.lightSheet),
                    //             ),
                    //             const CloseButton(),
                    //             const Center(
                    //               child: Text(
                    //                 'Oops !',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w700,
                    //                   fontSize: 24.0,
                    //                 ),
                    //               ),
                    //             ),
                    //             const SpaceHeight(4.0),
                    //             const Center(
                    //               child: Text(
                    //                 'Aplikasi ingin mengakses Kamera',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w700,
                    //                   fontSize: 15.0,
                    //                 ),
                    //               ),
                    //             ),
                    //             const SpaceHeight(36.0),
                    //             Button.filled(
                    //               onPressed: () => context.pop(),
                    //               label: 'Tolak',
                    //               color: AppColors.secondary,
                    //             ),
                    //             const SpaceHeight(16.0),
                    //             Button.filled(
                    //               onPressed: () {
                    //                 context.pop();
                    //               },
                    //               label: 'Izinkan',
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     );
                    //   },
                    //   label: 'Scan Pesanan',
                    //   icon: Assets.icons.attendance.svg(),
                    // ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
