import streamlit as st

st.title('ML Model Predictions App')
st.write("Choose and use apps for free!")

st.divider()
st.header("Home")

st.set_page_config(page_title= "Assistant AI", layout= 'centered')

st.page_link("pages/breast_cancer.py", label= "Breast Cancer App")
st.page_link("pages/page_2.py", label= "Page 2")