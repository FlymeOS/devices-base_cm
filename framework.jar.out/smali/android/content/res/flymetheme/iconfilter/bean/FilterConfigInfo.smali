.class public Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
.super Ljava/lang/Object;
.source "FilterConfigInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    }
.end annotation


# static fields
.field public static final ATTR_FILTER_VERSION:Ljava/lang/String; = "filter_version"

.field public static final ATTR_POINT_TO_X:Ljava/lang/String; = "toX"

.field public static final ATTR_POINT_TO_Y:Ljava/lang/String; = "toY"

.field public static final CONFIG_ICON_FILTERS:Ljava/lang/String; = "IconFilters"

.field public static final CONFIG_ICON_POSITION:Ljava/lang/String; = "IconPosition"

.field public static final CONFIG_ICON_TRANSFORM:Ljava/lang/String; = "IconTransform"

.field public static final FILTER:Ljava/lang/String; = "Filter"

.field public static final POINT:Ljava/lang/String; = "Point"


# instance fields
.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mFilters:Ljava/util/List;

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public addPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mPoints:Ljava/util/List;

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mVersion:Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "FilterConfig\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v4, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 76
    .local v2, "point":Landroid/graphics/Point;
    const-string/jumbo v4, "x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v4, ", y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_0
    iget-object v4, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .line 83
    .local v0, "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    invoke-virtual {v0}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    .end local v0    # "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
