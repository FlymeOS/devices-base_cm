.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mDisplayId:I

.field private final mHash:I

.field private final mIsThemeable:Z

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field final mResDir:Ljava/lang/String;

.field final mScale:F

.field private final mThemeConfig:Landroid/content/res/ThemeConfig;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F
    .param p5, "isThemeable"    # Z
    .param p6, "themeConfig"    # Landroid/content/res/ThemeConfig;
    .param p7, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 35
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 36
    iput p2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 37
    if-eqz p3, :cond_0

    .line 38
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 40
    :cond_0
    iput p4, p0, Landroid/content/res/ResourcesKey;->mScale:F

    .line 41
    iput-boolean p5, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    .line 42
    iput-object p7, p0, Landroid/content/res/ResourcesKey;->mToken:Landroid/os/IBinder;

    .line 43
    iput-object p6, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    .line 45
    const/16 v0, 0x11

    .line 46
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 47
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    add-int v0, v1, v3

    .line 48
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 50
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/ResourcesKey;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 51
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    add-int v0, v3, v1

    .line 52
    mul-int/lit8 v1, v0, 0x1f

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Landroid/content/res/ThemeConfig;->hashCode()I

    move-result v2

    :cond_1
    add-int v0, v1, v2

    .line 53
    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    .line 54
    return-void

    .line 46
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 48
    goto :goto_1

    :cond_4
    move v1, v2

    .line 51
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v2, p1, Landroid/content/res/ResourcesKey;

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 70
    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 72
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 75
    :cond_2
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 78
    :cond_3
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 79
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    :cond_4
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v3, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-ne v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eq v2, v3, :cond_5

    .line 87
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :cond_5
    iget v2, p0, Landroid/content/res/ResourcesKey;->mScale:F

    iget v3, v0, Landroid/content/res/ResourcesKey;->mScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 97
    iget-boolean v2, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    iget-boolean v3, v0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    if-ne v2, v3, :cond_0

    .line 100
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eq v2, v3, :cond_6

    .line 101
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    invoke-virtual {v2, v3}, Landroid/content/res/ThemeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    .prologue
    .line 57
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
