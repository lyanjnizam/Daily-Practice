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

dark_mode = st.toggle("Dark Mode")
st.button("Click Here")