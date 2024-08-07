function calculateInfusionRate() {
  const infusionVolume = parseFloat(document.getElementById('infusion_volume').value);
  const infusionTime = parseFloat(document.getElementById('infusion_time').value);
  const setType = parseInt(document.getElementById('set_type').value);

  if (isNaN(infusionVolume) || isNaN(infusionTime) || isNaN(setType)) {
    alert('全てのフィールドに正しい値を入力してください。');
    return;
  }

  // 滴下速度の計算
  const infusionRate = (infusionVolume / infusionTime) * setType;

  // 結果を表示
  document.getElementById('infusion_rate_result').textContent = infusionRate.toFixed(2);
}
