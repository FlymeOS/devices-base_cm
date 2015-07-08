.class Landroid/content/pm/PackageParser$FlymeInjector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyAccessArgs(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageParser$Activity;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "target"    # Landroid/content/pm/PackageParser$Activity;

    .prologue
    .line 5031
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5032
    return-void
.end method

.method static parseAccessArgsFromResource(Landroid/content/pm/PackageParser$Activity;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .prologue
    .line 5035
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/16 v1, 0x27

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5036
    return-void
.end method

.method static validateName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5039
    const-string v0, "flyme"

    .line 5040
    .local v0, "FLYME_PACKAGE":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5042
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
