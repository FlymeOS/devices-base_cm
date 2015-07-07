.class public Landroid/app/IconPackHelper;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IconPackHelper$ColorFilterUtils;,
        Landroid/app/IconPackHelper$IconCustomizer;
    }
.end annotation


# static fields
.field private static final COMPOSED_ICON_COOKIE:I = 0x80

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final ICON_BACK_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_BACK_FORMAT:Ljava/lang/String; = "iconback%d"

.field private static final ICON_BACK_TAG:Ljava/lang/String; = "iconback"

.field private static final ICON_MASK_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_MASK_TAG:Ljava/lang/String; = "iconmask"

.field private static final ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_SCALE_TAG:Ljava/lang/String; = "scale"

.field private static final ICON_UPON_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_UPON_TAG:Ljava/lang/String; = "iconupon"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposedIconInfo:Landroid/app/ComposedIconInfo;

.field private final mContext:Landroid/content/Context;

.field private mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

.field private mIconBackCount:I

.field private mIconPackResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedIconPackName:Ljava/lang/String;

.field private mLoadedIconPackResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Landroid/app/IconPackHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "iconback"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_BACK_COMPONENT:Landroid/content/ComponentName;

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "iconmask"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_MASK_COMPONENT:Landroid/content/ComponentName;

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "iconupon"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_UPON_COMPONENT:Landroid/content/ComponentName;

    .line 92
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "scale"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    .line 96
    iput-object p1, p0, Landroid/app/IconPackHelper;->mContext:Landroid/content/Context;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    .line 98
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 99
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ComposedIconInfo;

    invoke-direct {v1}, Landroid/app/ComposedIconInfo;-><init>()V

    iput-object v1, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    .line 100
    iget-object v1, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, v1, Landroid/app/ComposedIconInfo;->iconSize:I

    .line 101
    iget-object v1, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, v1, Landroid/app/ComposedIconInfo;->iconDensity:I

    .line 102
    new-instance v1, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    invoke-direct {v1}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;-><init>()V

    iput-object v1, p0, Landroid/app/IconPackHelper;->mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    .line 103
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createIconResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 267
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 272
    .local v8, "themeApk":Ljava/lang/String;
    iget-boolean v9, v5, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v9, :cond_0

    .line 273
    const-string v4, ""

    .line 274
    .local v4, "iconResPath":Ljava/lang/String;
    const-string v3, ""

    .line 275
    .local v3, "iconApkPath":Ljava/lang/String;
    const-string v6, ""

    .line 282
    .local v6, "prefixPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 283
    .local v0, "assets":Landroid/content/res/AssetManager;
    const/16 v9, 0x62

    invoke-virtual {v0, v8, v3, v6, v9}, Landroid/content/res/AssetManager;->addIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 287
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 288
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v7, Landroid/content/res/Resources;

    invoke-direct {v7, v0, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 289
    .local v7, "res":Landroid/content/res/Resources;
    return-object v7

    .line 277
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "iconApkPath":Ljava/lang/String;
    .end local v4    # "iconResPath":Ljava/lang/String;
    .end local v6    # "prefixPath":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v6, "assets/icons/"

    .line 278
    .restart local v6    # "prefixPath":Ljava/lang/String;
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getIconPackApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .restart local v3    # "iconApkPath":Ljava/lang/String;
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getIconPackResPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "iconResPath":Ljava/lang/String;
    goto :goto_0
.end method

.method private getResourceIdForDrawable(Ljava/lang/String;)I
    .locals 4
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, "resId":I
    return v0
.end method

.method private getResourceIdForName(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 257
    iget-object v1, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-direct {p0, v0}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v1

    .line 261
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isComposedIconComponent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "iconmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iconback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iconupon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadComposedIconComponents()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 230
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    sget-object v4, Landroid/app/IconPackHelper;->ICON_MASK_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v4}, Landroid/app/IconPackHelper;->getResourceIdForName(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, v3, Landroid/app/ComposedIconInfo;->iconMask:I

    .line 231
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    sget-object v4, Landroid/app/IconPackHelper;->ICON_UPON_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v4}, Landroid/app/IconPackHelper;->getResourceIdForName(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, v3, Landroid/app/ComposedIconInfo;->iconUpon:I

    .line 234
    iget v3, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    if-lez v3, :cond_0

    .line 235
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iget v4, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/app/ComposedIconInfo;->iconBacks:[I

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    if-ge v1, v3, :cond_0

    .line 237
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iget-object v3, v3, Landroid/app/ComposedIconInfo;->iconBacks:[I

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "iconback%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Landroid/app/IconPackHelper;->getResourceIdForName(Landroid/content/ComponentName;)I

    move-result v4

    aput v4, v3, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    sget-object v4, Landroid/app/IconPackHelper;->ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, "scale":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 247
    :try_start_0
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Landroid/app/ComposedIconInfo;->iconScale:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_1
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v9, v3, Landroid/app/ComposedIconInfo;->iconScale:F

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v9, v3, Landroid/app/ComposedIconInfo;->iconScale:F

    goto :goto_1
.end method

.method private loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 108
    iput v8, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    .line 109
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 112
    .local v2, "eventType":I
    :cond_0
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    .line 167
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 168
    return-void

    .line 116
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/app/IconPackHelper;->parseComposedIconComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    iget-object v5, p0, Landroid/app/IconPackHelper;->mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    invoke-static {p1, v5}, Landroid/app/IconPackHelper$ColorFilterUtils;->parseIconFilter(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/IconPackHelper$ColorFilterUtils$Builder;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "scale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    const-string v5, "factor"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "factor":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 127
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 128
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    :cond_3
    sget-object v5, Landroid/app/IconPackHelper;->ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

    invoke-interface {p2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    .end local v3    # "factor":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    const-string v5, "component"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "component":Ljava/lang/String;
    const-string v5, "drawable"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "drawable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 148
    const-string v5, "ComponentInfo{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    const/16 v5, 0xe

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "name":Landroid/content/ComponentName;
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 159
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "name":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .restart local v4    # "name":Landroid/content/ComponentName;
    :goto_1
    if-eqz v4, :cond_1

    .line 165
    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 161
    :cond_5
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_1
.end method

.method private parseComposedIconComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Z
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "tag":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/app/IconPackHelper;->isComposedIconComponent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-lt v5, v4, :cond_0

    .line 185
    const-string v5, "iconback"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    iput v5, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    if-ge v0, v5, :cond_3

    .line 188
    const-string v5, "iconback%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "icon":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, ""

    invoke-direct {v5, v2, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .end local v0    # "i":I
    .end local v1    # "icon":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .restart local v1    # "icon":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, ""

    invoke-direct {v3, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "icon":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 197
    goto :goto_0
.end method

.method public static shouldComposeIcon(Landroid/app/ComposedIconInfo;)Z
    .locals 1
    .param p0, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    .line 433
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComposedIconInfo()Landroid/app/ComposedIconInfo;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    return-object v0
.end method

.method public getDrawableForActivity(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0, p1}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .line 422
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDrawableForActivityWithDensity(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "density"    # I

    .prologue
    const/4 v1, 0x0

    .line 427
    invoke-virtual {p0, p1}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .line 428
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p2, v1, v3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;
    .locals 23
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    const/16 v19, 0x0

    .line 294
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    .line 295
    .local v17, "inputStream":Ljava/io/InputStream;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 298
    .local v15, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v22, "appfilter.xml"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 299
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 300
    .local v10, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 301
    const-string v21, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v10    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    if-eqz v19, :cond_3

    .line 313
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/app/IconPackHelper;->loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 322
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 377
    :cond_1
    :goto_1
    return-object v15

    .line 302
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v8

    .line 305
    .local v8, "e":Ljava/lang/Exception;
    const-string v21, "appfilter"

    const-string/jumbo v22, "xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 306
    .local v20, "resId":I
    if-eqz v20, :cond_0

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    goto :goto_0

    .line 323
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v20    # "resId":I
    :cond_2
    if-eqz v17, :cond_1

    .line 325
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 326
    :catch_1
    move-exception v21

    goto :goto_1

    .line 315
    :catch_2
    move-exception v8

    .line 316
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 322
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 333
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_2
    const-string/jumbo v21, "theme_iconpack"

    const-string v22, "array"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 334
    .local v6, "arrayId":I
    if-nez v6, :cond_4

    .line 335
    const-string v21, "icon_pack"

    const-string v22, "array"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 338
    :cond_4
    if-eqz v6, :cond_1

    .line 339
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 340
    .local v14, "iconPack":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 341
    .local v7, "compName":Landroid/content/ComponentName;
    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    aget-object v9, v5, v11

    .line 343
    .local v9, "entry":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 341
    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 323
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "arrayId":I
    .end local v7    # "compName":Landroid/content/ComponentName;
    .end local v9    # "entry":Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "iconPack":[Ljava/lang/String;
    .end local v18    # "len$":I
    .restart local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    if-eqz v17, :cond_3

    .line 325
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 326
    :catch_3
    move-exception v21

    goto :goto_2

    .line 317
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v8

    .line 318
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 322
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 323
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    if-eqz v17, :cond_3

    .line 325
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 326
    :catch_5
    move-exception v21

    goto :goto_2

    .line 321
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 322
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 327
    :cond_8
    :goto_5
    throw v21

    .line 323
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    if-eqz v17, :cond_8

    .line 325
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    .line 326
    :catch_6
    move-exception v22

    goto :goto_5

    .line 347
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "arrayId":I
    .restart local v7    # "compName":Landroid/content/ComponentName;
    .restart local v9    # "entry":Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v14    # "iconPack":[Ljava/lang/String;
    .restart local v18    # "len$":I
    :cond_a
    move-object v12, v9

    .line 348
    .local v12, "icon":Ljava/lang/String;
    const-string v21, "_"

    const-string v22, "."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "compName":Landroid/content/ComponentName;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .restart local v7    # "compName":Landroid/content/ComponentName;
    invoke-interface {v15, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 354
    .local v4, "activityIndex":I
    if-lez v4, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_5

    .line 358
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, "iconPackage":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 363
    add-int/lit8 v21, v4, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 364
    .local v13, "iconActivity":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 369
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 370
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 372
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 373
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "compName":Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-direct {v7, v0, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .restart local v7    # "compName":Landroid/content/ComponentName;
    invoke-interface {v15, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method public getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-virtual {p0}, Landroid/app/IconPackHelper;->isIconPackLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 410
    :cond_0
    :goto_0
    return v2

    .line 396
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v0, "compName":Landroid/content/ComponentName;
    iget-object v4, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    .local v1, "drawable":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 400
    invoke-direct {p0, v1}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v2

    .line 401
    .local v2, "resId":I
    if-nez v2, :cond_0

    .line 405
    .end local v2    # "resId":I
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "compName":Landroid/content/ComponentName;
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .restart local v0    # "compName":Landroid/content/ComponentName;
    iget-object v4, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 407
    .restart local v1    # "drawable":Ljava/lang/String;
    if-nez v1, :cond_3

    move v2, v3

    .line 408
    goto :goto_0

    .line 410
    :cond_3
    invoke-direct {p0, v1}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getResourceIdForApp(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 415
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 416
    const-string v1, ""

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 417
    invoke-virtual {p0, v0}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    return v1
.end method

.method isIconPackLoaded()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIconPack(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 205
    iput-object v4, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    .line 206
    iput-object v4, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput-object v4, v2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    .line 208
    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v5, v3, Landroid/app/ComposedIconInfo;->iconUpon:I

    iput v5, v2, Landroid/app/ComposedIconInfo;->iconMask:I

    .line 209
    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/app/ComposedIconInfo;->iconScale:F

    .line 210
    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput-object v4, v2, Landroid/app/ComposedIconInfo;->colorFilter:[F

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iput v5, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    .line 213
    iget-object v2, p0, Landroid/app/IconPackHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/app/IconPackHelper;->createIconResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0, v1, p1}, Landroid/app/IconPackHelper;->getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    .line 215
    iput-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    .line 216
    iput-object p1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Landroid/app/IconPackHelper;->loadComposedIconComponents()V

    .line 218
    iget-object v2, p0, Landroid/app/IconPackHelper;->mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    invoke-virtual {v2}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->build()Landroid/graphics/ColorMatrix;

    move-result-object v0

    .line 219
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    if-eqz v0, :cond_0

    .line 220
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v3, Landroid/app/ComposedIconInfo;->colorFilter:[F

    goto :goto_0
.end method
