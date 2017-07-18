.class Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ThemeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeVersionImpl3"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 11
    .param p0, "version"    # Landroid/content/ThemeVersion$ComponentVersion;

    .prologue
    .line 191
    sget-object v2, Lcyanogenmod/app/ThemeComponent;->UNKNOWN:Lcyanogenmod/app/ThemeComponent;

    .line 192
    .local v2, "component":Lcyanogenmod/app/ThemeComponent;
    invoke-static {}, Lcyanogenmod/app/ThemeComponent;->values()[Lcyanogenmod/app/ThemeComponent;

    move-result-object v7

    const/4 v0, 0x0

    array-length v8, v7

    :goto_0
    if-ge v0, v8, :cond_1

    aget-object v6, v7, v0

    .line 193
    .local v6, "aComponent":Lcyanogenmod/app/ThemeComponent;
    iget v9, v6, Lcyanogenmod/app/ThemeComponent;->id:I

    iget v10, p0, Landroid/content/ThemeVersion$ComponentVersion;->id:I

    if-ne v9, v10, :cond_0

    .line 194
    move-object v2, v6

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v6    # "aComponent":Lcyanogenmod/app/ThemeComponent;
    :cond_1
    iget v1, p0, Landroid/content/ThemeVersion$ComponentVersion;->id:I

    .line 199
    .local v1, "id":I
    invoke-virtual {p0}, Landroid/content/ThemeVersion$ComponentVersion;->name()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "name":Ljava/lang/String;
    iget v4, p0, Landroid/content/ThemeVersion$ComponentVersion;->minSupportedVersion:I

    .line 201
    .local v4, "minVersion":I
    iget v5, p0, Landroid/content/ThemeVersion$ComponentVersion;->currentVersion:I

    .line 203
    .local v5, "targetVersion":I
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 6
    .param p0, "component"    # Lcyanogenmod/app/ThemeComponent;

    .prologue
    .line 166
    invoke-static {}, Landroid/content/ThemeVersion$ComponentVersion;->values()[Landroid/content/ThemeVersion$ComponentVersion;

    move-result-object v3

    .line 165
    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 167
    .local v1, "version":Landroid/content/ThemeVersion$ComponentVersion;
    invoke-static {v1}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v0

    .line 168
    .local v0, "sdkVersionInfo":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    iget-object v5, v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    invoke-virtual {v5, p0}, Lcyanogenmod/app/ThemeComponent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    return-object v0

    .line 165
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "sdkVersionInfo":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .end local v1    # "version":Landroid/content/ThemeVersion$ComponentVersion;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getDeviceComponentVersions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "versions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/app/ThemeVersion$ComponentVersion;>;"
    invoke-static {}, Landroid/content/ThemeVersion$ComponentVersion;->values()[Landroid/content/ThemeVersion$ComponentVersion;

    move-result-object v3

    .line 178
    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 180
    .local v0, "version":Landroid/content/ThemeVersion$ComponentVersion;
    invoke-static {v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->fwCompVersionToSdkVersion(Landroid/content/ThemeVersion$ComponentVersion;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "version":Landroid/content/ThemeVersion$ComponentVersion;
    :cond_0
    return-object v1
.end method
