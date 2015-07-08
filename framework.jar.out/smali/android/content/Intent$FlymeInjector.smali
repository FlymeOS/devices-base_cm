.class Landroid/content/Intent$FlymeInjector;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyMeizuFlag(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 7694
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7695
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;

    .prologue
    .line 7683
    new-instance v0, Landroid/content/IntentExt;

    invoke-direct {v0}, Landroid/content/IntentExt;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 7684
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 7687
    new-instance v0, Landroid/content/IntentExt;

    invoke-direct {v0}, Landroid/content/IntentExt;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 7688
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7689
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 7690
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 7691
    return-void
.end method

.method static readIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "src"    # Landroid/content/Intent;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7716
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 7717
    .local v0, "intentExt":Landroid/content/IntentExt;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7718
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 7719
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 7720
    return-void
.end method

.method static toShortStringForMeizuFlag(Landroid/content/Intent;Ljava/lang/StringBuilder;Z)Z
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    .prologue
    .line 7698
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    if-eqz v0, :cond_1

    .line 7699
    if-nez p2, :cond_0

    .line 7700
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7702
    :cond_0
    const-string/jumbo v0, "meizuflg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7703
    const/4 p2, 0x0

    .line 7705
    .end local p2    # "first":Z
    :cond_1
    return p2
.end method

.method static writeIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "src"    # Landroid/content/Intent;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 7709
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 7710
    .local v0, "intentExt":Landroid/content/IntentExt;
    iget v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7711
    iget-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7712
    iget-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7713
    return-void
.end method
