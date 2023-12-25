/**
 * @type {HTMLInputElement}
 */
const advancedMode = document.getElementById("advanced");

advancedMode.addEventListener("input", () => {
  document.body.classList.toggle("enable-advance")
});

const basicParameters = ["topleft", "topright", "bottomleft", "bottomright"];
const advancedParameters = ["topleftx", "toprightx", "bottomleftx", "bottomrightx"];

/**
 * @type {Array<HTMLInputElement}
 */
const basicValues = basicParameters.map((item) => document.getElementById(item));
/**
 * @type {Array<HTMLInputElement}
 */
const advancedValues = advancedParameters.map((item) => document.getElementById(item));

/**
 * @type {Array<HTMLSelectElement>}
 */
const basicUnits = basicParameters.map((item) => document.getElementById(item + "unit"));
/**
 * @type {Array<HTMLSelectElement>}
 */
const advancedUnits = advancedParameters.map((item) => document.getElementById(item + "unit"));

const basicElements = [...basicValues, ...basicUnits];
const advancedElements = [...advancedValues, ...advancedUnits];

const allElements = [...basicElements, ...advancedElements, advancedMode];
const box = document.getElementById("box");

allElements.forEach((el) => {
  el.addEventListener("input", () => {
    let rad = basicParameters
      .map((_, i) => `${basicValues[i].value ?? "0"}${basicUnits[i].value}`)
      .join(" ");

    if (advancedMode.checked) {
      rad += " / ";
      rad += advancedParameters
        .map((_, i) => `${advancedValues[i].value ?? "1"}${advancedUnits[i].value}`)
        .join(" ");
    }

    box.animate(
      [
        {},
        {
          borderRadius: rad,
        },
      ],
      {
        duration: 600,
        fill: "forwards",
        easing: "ease",
      }
    );
  })
});
