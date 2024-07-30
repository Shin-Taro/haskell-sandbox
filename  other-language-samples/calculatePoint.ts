const calculate = (score: number) => {
  // 3万点引いて1000で割る
  const result = (score - 30000) / 1000;
  // 点数がマイナスかどうか
  const isNegative = result < 0;
  // 絶対値取得
  const abs = Math.abs(result);
  // 整数部取得
  const truncated = Math.trunc(abs);
  // 小数部取得
  const decimal = abs - truncated;
  // 小数部が0.5以上かどうか
  const calculated = decimal >= 0.5 ? 1 : 0;
  // 整数部に足す
  const added = truncated + calculated;
  // マイナスの場合はマイナスにする
  return isNegative ? -added : added;
};

const determineBonus = (position: number): number => {
  if (position === 1) {
    return 50;
  }
  if (position === 2) {
    return 10;
  }
  if (position === 3) {
    return 10;
  }
  if (position === 4) {
    return 30;
  }
  throw Error("invalid position");
};

export const calculatePoint = (score: number, position: number): number => {
  return calculate(score) + determineBonus(position);
};
