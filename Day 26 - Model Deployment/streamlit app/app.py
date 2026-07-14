import streamlit as st

st.title('MultiPage Streamlit App')
st.write("Building multiple pages apps!")

st.page_link("pages\page_1.py", label= "Page 1")
st.page_link("pages\page_2.py", label= "Page 2")