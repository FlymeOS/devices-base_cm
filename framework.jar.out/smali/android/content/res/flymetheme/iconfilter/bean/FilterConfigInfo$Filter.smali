.class public Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
.super Ljava/lang/Object;
.source "FilterConfigInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation


# static fields
.field public static final ATTR_FILTER_NAME:Ljava/lang/String; = "name"

.field public static final FILTER_COLOR_LEVEL:Ljava/lang/String; = "ColorLevel"

.field public static final FILTER_EDGE_DETECT:Ljava/lang/String; = "EdgeDetect"

.field public static final FILTER_GRADIENT_MAPPING:Ljava/lang/String; = "GradientMapping"

.field public static final FILTER_HSL:Ljava/lang/String; = "Hsl"

.field public static final PARAM:Ljava/lang/String; = "Param"

.field public static final PARAM_ATTR_COLOR_CHANNEL:Ljava/lang/String; = "ColorChannel"

.field public static final PARAM_ATTR_NAME:Ljava/lang/String; = "name"

.field public static final PARAM_ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final PARAM_EDGE_COLOR:Ljava/lang/String; = "EdgeColor"

.field public static final PARAM_END_COLOR:Ljava/lang/String; = "EndColor"

.field public static final PARAM_HUE_ADJUST:Ljava/lang/String; = "HueAdjust"

.field public static final PARAM_HUE_MODIFY:Ljava/lang/String; = "HueModify"

.field public static final PARAM_INPUT_MAX:Ljava/lang/String; = "InputMax"

.field public static final PARAM_INPUT_MIDDLE:Ljava/lang/String; = "InputMiddle"

.field public static final PARAM_INPUT_MIN:Ljava/lang/String; = "InputMin"

.field public static final PARAM_LUM_ADJUST:Ljava/lang/String; = "LumAdjust"

.field public static final PARAM_LUM_MODIFY:Ljava/lang/String; = "LumModify"

.field public static final PARAM_OUTPUT_MAX:Ljava/lang/String; = "OutputMax"

.field public static final PARAM_OUTPUT_MIN:Ljava/lang/String; = "OutputMin"

.field public static final PARAM_SATURATION_ADJUST:Ljava/lang/String; = "SaturationAdjust"

.field public static final PARAM_SATURATION_MODIFY:Ljava/lang/String; = "SaturationModify"

.field public static final PARAM_START_COLOR:Ljava/lang/String; = "StartColor"


# instance fields
.field private name:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->name:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->params:Ljava/util/Map;

    .line 127
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->params:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "the filter name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v4, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v4, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->params:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 153
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v4, p0, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->params:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 159
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
