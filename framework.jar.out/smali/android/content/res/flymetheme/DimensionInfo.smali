.class public Landroid/content/res/flymetheme/DimensionInfo;
.super Ljava/lang/Object;
.source "DimensionInfo.java"


# instance fields
.field public mDimension:I

.field mPackageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "data"    # I
    .param p2, "pkgTag"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Landroid/content/res/flymetheme/DimensionInfo;->mDimension:I

    .line 14
    iput-object p2, p0, Landroid/content/res/flymetheme/DimensionInfo;->mPackageTag:Ljava/lang/String;

    .line 12
    return-void
.end method
