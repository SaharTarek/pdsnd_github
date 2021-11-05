
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

head(ny)

head(wash)

head(chi)

summary(chi)

summary(ny)

summary(wash)

x=na.omit(ny$Trip.Duration)
y=NULL
idx=1

for(num in x){
    if(num>700){
        y[idx]=num
        idx=idx+1
    }
    }


y

qplot(x=Gender, data=ny, ylab='Gender.Count')


qplot(x=Gender, data=chi, ylab='Gender.Count')

system('python -m nbconvert Explore_bikeshare_data.ipynb')
