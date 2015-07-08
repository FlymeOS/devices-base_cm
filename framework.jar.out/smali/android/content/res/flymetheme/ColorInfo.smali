.class public Landroid/content/res/flymetheme/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# instance fields
.field public mColor:J

.field mPackageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # J
    .param p3, "pkgTag"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    .line 14
    iput-object p3, p0, Landroid/content/res/flymetheme/ColorInfo;->mPackageTag:Ljava/lang/String;

    .line 15
    return-void
.end method
