library(FactoMineR)

df1 <- read.csv(file='~/Downloads/task/data/train_1_clean.csv')

if (FALSE) {
    FAMD(c(
    df1$BuildType,df1$Area,df1$RefurbishYear,df1$Electrical,df1$PoolArea,
    df1$ExteriorCondition,df1$Area1,df1$GarageCars,df1$AlleyType,df1$SaleYear,
    df1$Fireplaces,df1$RoofType,df1$RoofMat,df1$StreetLength,df1$Style,
    df1$DriveSurface,df1$Foundation,df1$AGroundKitchens,df1$SaleType,
    df1$BuildYear,df1$HeatingType,df1$PoolQuality,df1$AC,df1$AGroundBedroom,
    df1$GarageType,df1$VeneerType,df1$HBath,df1$Area2,df1$FenceQuality,
    df1$Feature1,df1$GarageArea,df1$SaleMonth,df1$Functionality,df1$BaseBath,
    df1$GarageBuildYear,df1$KitchenQuality,df1$AGroundArea,df1$BaseHBath,
    df1$Shape,df1$Type,df1$Price,df1$LogPrice
  ))
}

res.pca <- PCA(df1, graph = FALSE)

eig.val <- res.pca$eig
barplot(eig.val[, 2], 
        names.arg = 1:nrow(eig.val), 
        main = "Variances Explained by Dimensions (%)",
        xlab = "Principal Dimensions",
        ylab = "Percentage of variances",
        col ="steelblue")
sort(res.pca$var$contrib[,1])
sort(res.pca$var$contrib[,2])
sort(res.pca$var$contrib[,3])

