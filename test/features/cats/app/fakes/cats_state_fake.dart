import 'package:doctus_test/core/utils/enums/status.dart';
import 'package:doctus_test/features/cats/app/cubit/cats_state.dart';

import '../../domain/fakes/cat_model_fake.dart';


const CatsState tInitialState = CatsState(
  status: Status.initial,
  cats: [],
);

const CatsState tErrorState = CatsState(
  status: Status.error,
  cats: [],
);

const CatsState tLoadingState = CatsState(
  status: Status.loading,
  cats: [],
);
const CatsState tSuccessState = CatsState(
  status: Status.success,
  cats: [tCat],
);

