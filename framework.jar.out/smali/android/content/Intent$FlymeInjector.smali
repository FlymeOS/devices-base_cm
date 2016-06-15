.class final Landroid/content/Intent$FlymeInjector;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 7973
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7974
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mAccessSrcFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 7975
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 7976
    return-void
.end method

.method static copyMeizuFlag(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 7979
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7980
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;

    .prologue
    .line 7964
    new-instance v0, Landroid/content/IntentExt;

    invoke-direct {v0}, Landroid/content/IntentExt;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 7965
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 7968
    invoke-static {p0}, Landroid/content/Intent$FlymeInjector;->createFlymeIntent(Landroid/content/Intent;)V

    .line 7969
    invoke-static {p0, p1}, Landroid/content/Intent$FlymeInjector;->copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 7970
    return-void
.end method

.method static readIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7989
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 7990
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 7991
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 7992
    return-void
.end method

.method static writeIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
