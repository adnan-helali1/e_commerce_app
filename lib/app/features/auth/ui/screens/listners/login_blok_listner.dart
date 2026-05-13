// // login_bloc_listener.dart

// import 'package:B2B/app/core/helpers/extensions.dart';
// import 'package:B2B/app/core/routing/routes.dart';
// import 'package:B2B/app/features/auth/logic/cubit/login_cubit.dart';
// import 'package:B2B/app/features/auth/logic/cubit/login_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginBlocListener extends StatelessWidget {
//   const LoginBlocListener({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<LoginCubit, LoginState>(
//       listener: (context, state) {
//         state.whenOrNull(
//           loading: () {
//             showDialog(
//               context: context,
//               barrierDismissible: false,
//               builder: (_) {
//                 return Center(
//                   child: CircularProgressIndicator(
//                     color: context.cs.primary,
//                   ),
//                 );
//               },
//             );
//           },
//           success: (loginResponse) {
//             _closeDialog(context);

//             context.pushReplacementNamed(
//               Routes.forgotpasswordscreen,
//             );
//           },
//           failure: (error) {
//             _closeDialog(context);

//             showDialog(
//               context: context,
//               builder: (_) {
//                 return AlertDialog(
//                   icon: const Icon(
//                     Icons.error,
//                     color: Colors.red,
//                     size: 32,
//                   ),
//                   content: Text(error),
//                   actions: [
//                     TextButton(
//                       onPressed: () {
//                         context.pop();
//                       },
//                       child: const Text('Got it'),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//         );
//       },
//       child: const SizedBox.shrink(),
//     );
//   }

//   void _closeDialog(BuildContext context) {
//     if (Navigator.canPop(context)) {
//       context.pop();
//     }
//   }
// }
