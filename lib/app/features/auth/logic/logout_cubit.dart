import 'package:B2B/app/features/auth/data/repos/login_repo.dart';

Future<void> logout(LoginRepo loginRepo) async {
  await loginRepo.logout();
}
