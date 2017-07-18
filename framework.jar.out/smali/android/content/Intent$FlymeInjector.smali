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
    .line 8270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 8282
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 8283
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mAccessSrcFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    .line 8284
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 8285
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 8286
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    .line 8287
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, v1, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    .line 8281
    return-void
.end method

.method static copyMeizuFlag(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 8291
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v1, p1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 8290
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;

    .prologue
    .line 8273
    new-instance v0, Landroid/content/IntentExt;

    invoke-direct {v0}, Landroid/content/IntentExt;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 8272
    return-void
.end method

.method static createFlymeIntent(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "src"    # Landroid/content/Intent;

    .prologue
    .line 8277
    invoke-static {p0}, Landroid/content/Intent$FlymeInjector;->createFlymeIntent(Landroid/content/Intent;)V

    .line 8278
    invoke-static {p0, p1}, Landroid/content/Intent$FlymeInjector;->copyIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 8276
    return-void
.end method

.method static readIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 8304
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    .line 8305
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    .line 8306
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    .line 8307
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    .line 8308
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    .line 8309
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    .line 8303
    return-void
.end method

.method static writeIntentExt(Landroid/content/Intent;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "dst"    # Landroid/content/Intent;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 8295
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mMeizuFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8296
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v0, v0, Landroid/content/IntentExt;->mAccessSrcFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8297
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8298
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessPackageLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8299
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8300
    iget-object v0, p0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8294
    return-void
.end method
