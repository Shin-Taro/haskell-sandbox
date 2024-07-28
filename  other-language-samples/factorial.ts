// const factorial = (n: number): number => {
//   if (n === 0) return 1;
//   if (n < 0) throw Error("negative number argument");

//   for (let i = n - 1; i > 1; i--) {
//     n *= i;
//   }
//   return n;
// };

const factorial = (n: number): number => {
  if (n === 0) return 1;
  if (n < 0) throw Error("negative number argument");
  return n * factorial(n - 1);
};
