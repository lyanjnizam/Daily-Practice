import streamlit as st

st.title('First Streamlit App')

st.write('Hello! Let's build apps!')

name = st.text_input('What is your name?')

age = st.slider('How old are you?', 1, 100, 18)

if name:
    st.write(f'Nice to meet you {name}!')

    