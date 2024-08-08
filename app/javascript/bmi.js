document.addEventListener('turbo:load', () => {
  const calculateBMI = () => {
    // 身長と体重の値を取得
    const height = parseFloat(document.getElementById('height').value);
    const weight = parseFloat(document.getElementById('weight').value);

    // 身長が0以下または体重が0以下の場合は計算しない
    if (height <= 0 || weight <= 0) {
      document.getElementById('your-result').textContent = "無効な入力";
      return;
    }

    // 身長をメートルに変換
    const heightInMeters = height / 100;

    // BMIを計算
    const bmiResult = weight / (heightInMeters * heightInMeters);

    // 結果を表示
    document.getElementById('your-result').textContent = bmiResult.toFixed(2);
  };

  // ボタンにクリックイベントをバインド
  const calculateButton = document.querySelector('.calculate-btn');
  if (calculateButton) {
    calculateButton.addEventListener('click', calculateBMI);
  }
});
