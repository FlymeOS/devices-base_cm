.class public Lcyanogenmod/app/ThemeVersion;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ThemeVersion$ComponentVersion;,
        Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;,
        Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;
    }
.end annotation


# static fields
.field private static final CM11:I = 0x1

.field private static final CM12_PRE_VERSIONING:I = 0x2

.field private static final MIN_SUPPORTED_THEME_VERSION_FIELD_NAME:Ljava/lang/String; = "MIN_SUPPORTED_THEME_VERSION"

.field private static final THEME_VERSION_CLASS_NAME:Ljava/lang/String; = "android.content.ThemeVersion"

.field private static final THEME_VERSION_FIELD_NAME:Ljava/lang/String; = "THEME_VERSION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 2
    .param p0, "component"    # Lcyanogenmod/app/ThemeComponent;

    .prologue
    .line 65
    invoke-static {}, Lcyanogenmod/app/ThemeVersion;->getVersion()I

    move-result v0

    .line 66
    .local v0, "version":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 68
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 69
    invoke-static {p0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v1

    return-object v1

    .line 71
    :cond_1
    invoke-static {p0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    move-result-object v1

    return-object v1
.end method

.method public static getComponentVersions()Ljava/util/List;
    .locals 2
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
    .line 76
    invoke-static {}, Lcyanogenmod/app/ThemeVersion;->getVersion()I

    move-result v0

    .line 77
    .local v0, "version":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 79
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->getDeviceComponentVersions()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 82
    :cond_1
    invoke-static {}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl3;->getDeviceComponentVersions()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getMinSupportedVersion()I
    .locals 6

    .prologue
    .line 52
    :try_start_0
    const-string/jumbo v4, "android.content.ThemeVersion"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 54
    .local v2, "themeVersionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "MIN_SUPPORTED_THEME_VERSION"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 55
    .local v3, "themeVersionField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    .end local v3    # "themeVersionField":Ljava/lang/reflect/Field;
    .local v1, "getMinSupportedVersion":I
    :goto_0
    return v1

    .line 56
    .end local v1    # "getMinSupportedVersion":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    const/4 v1, 0x1

    .restart local v1    # "getMinSupportedVersion":I
    goto :goto_0

    .line 59
    .end local v1    # "getMinSupportedVersion":I
    :cond_0
    const/4 v1, 0x2

    .restart local v1    # "getMinSupportedVersion":I
    goto :goto_0
.end method

.method public static getVersion()I
    .locals 6

    .prologue
    .line 38
    :try_start_0
    const-string/jumbo v4, "android.content.ThemeVersion"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "themeVersionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "THEME_VERSION"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 40
    .local v2, "themeVersionField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 46
    .end local v2    # "themeVersionField":Ljava/lang/reflect/Field;
    .local v3, "version":I
    :goto_0
    return v3

    .line 41
    .end local v3    # "version":I
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    const/4 v3, 0x1

    .restart local v3    # "version":I
    goto :goto_0

    .line 44
    .end local v3    # "version":I
    :cond_0
    const/4 v3, 0x2

    .restart local v3    # "version":I
    goto :goto_0
.end method
