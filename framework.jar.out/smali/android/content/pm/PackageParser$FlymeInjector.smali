.class final Landroid/content/pm/PackageParser$FlymeInjector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyAccessArgs(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageParser$Activity;)V
    .locals 2
    .param p0, "dst"    # Landroid/content/pm/ActivityInfo;
    .param p1, "target"    # Landroid/content/pm/PackageParser$Activity;

    .prologue
    .line 5171
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v1, v1, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5170
    return-void
.end method

.method static parseAccessArgsFromResource(Landroid/content/pm/PackageParser$Activity;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .prologue
    .line 5175
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/16 v1, 0x2a

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5174
    return-void
.end method

.method static parseAccessMetaFromResource(Landroid/content/pm/PackageParser$Activity;)V
    .locals 5
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;

    .prologue
    .line 5179
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 5180
    .local v0, "dst":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 5181
    .local v1, "meta":Landroid/os/Bundle;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-boolean v3, v3, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 5182
    const-string/jumbo v3, "needAccessControl"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 5183
    .local v2, "metaNeedAccessConrol":Z
    if-nez v2, :cond_0

    .line 5184
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 5178
    .end local v2    # "metaNeedAccessConrol":Z
    :cond_0
    return-void
.end method

.method static validateName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5190
    const-string/jumbo v0, "flyme"

    .line 5191
    .local v0, "FLYME_PACKAGE":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5192
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
