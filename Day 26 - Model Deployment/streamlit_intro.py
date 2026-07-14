import streamlit as st

st.title('First Streamlit App')
st.write("Hello! Let's build apps!")

name = st.text_input("What's your name?")
age = st.slider("How old are ya?", 0, 100, 18)
if name:
    st.write(f"Nice to meet ya, {name}!")


import pandas as pd

data = {
    "Days": ["Mon", "Tue", "Wed", "Thu", "Fri"],
    "Cups of Coffee": [1, 2, 4, 3, 5]
}
coffee_table = pd.DataFrame(data)

st.write("Data collected:")
st.dataframe(coffee_table)

st.write("Visual chart:")
st.bar_chart(coffee_table, x= "Days", y= "Cups of Coffee", color= "#00FA0D")

st.divider()

feedback = st.text_area("Leave comments:")
temperature = st.number_input("Temperature:", min_value= 0, max_value= 1000)

st.divider()

size = st.radio("Pick size:", ["S", "M", "L"])
country = st.selectbox("Nationality:", ["Malaysia", "Singapore", "Brunei", "Indonesia"])
skills = st.multiselect("Choose skills:", ["Python", "SQL", "Power BI", "AI"])

agree = st.checkbox("I agree to the T&C.")

st.divider()

show_password = st.toggle("SHOW PASSWORD")
if show_password:
    st.write("PASSWORD")
else:
    st.write("********")

if st.button("Test"):
    st.success("System Successful!")
    st.info("Welcome to Streamlit!")
    st.warning("STOP!!!")
    st.error("PAGE ATTACKED!!!!!")

if st.button("Balloons!"):
    st.balloons()

if st.button("Snowww!!!"):
    st.snow()

import time
if st.button("Coffee"):
    with st.spinner("Making coffee..."):
        time.sleep(3)
        st.success("Coffee readyy!!")

if st.button("Show table"):
    st.toast("Table fetched!")
    st.dataframe(coffee_table)