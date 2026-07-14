import streamlit as st
import joblib

st.title('Breast Cancer Detection App')
st.write("Breast Cancer prediction app. Please insert medical data details.")

worst_concave_points = st.slider(min_value= 0.0, max_value= 1.0, step= 0.001, label= 'Worst Concave Points')
worst_radius = st.slider(min_value= 0.0, max_value= 100.0, step= 0.01, label= 'Worst Radius')
worst_concavity = st.slider(min_value= 0.0, max_value= 5.0, step= 0.001, label= 'Worst Concavity')
worst_perimeter = st.slider(min_value= 0.0, max_value= 500.0, step= 0.01, label= 'Worst Perimeter')

model = joblib.load('Breast Cancer Random Forest.joblib')

if st.button("Prediction"):
    input_values = [worst_concave_points,worst_radius,worst_concavity,worst_perimeter,
                    91.97, 0.05, 0.41, 40.34, 14.13, 880.58, 19.29, 0.13, 0.08, 25.68, 0.29]
    output = model.predict([input_values])
    if output == 0:
        st.warning("CANCER DETECTED!")
    else:
        st.info("All Safe and Sound.")