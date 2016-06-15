.class final Landroid/content/res/Configuration$FlymeInjector;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final FONT_CHANGED_UNDEFINED:I = 0x0

.field private static final THEME_CHANGED_UNDEFINED:I = 0x0

.field private static final XML_ATTR_FONT_CHANGED:Ljava/lang/String; = "fontChanged"

.field private static final XML_ATTR_THEME_CHANGED:Ljava/lang/String; = "themeChanged"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "that"    # Landroid/content/res/Configuration;
    .param p2, "n"    # I

    .prologue
    .line 1887
    if-eqz p2, :cond_0

    .line 1888
    .end local p2    # "n":I
    :goto_0
    return p2

    .restart local p2    # "n":I
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;->compareTo(Landroid/content/res/flymetheme/ConfigurationExt;)I

    move-result p2

    goto :goto_0
.end method

.method static diff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "changed"    # I

    .prologue
    .line 1874
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;->diff(Landroid/content/res/flymetheme/ConfigurationExt;)I

    move-result v0

    or-int/2addr v0, p2

    return v0
.end method

.method static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;
    .param p2, "delta"    # Landroid/content/res/Configuration;

    .prologue
    .line 1899
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eq v0, v1, :cond_0

    .line 1900
    iget-object v0, p2, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 1902
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eq v0, v1, :cond_1

    .line 1903
    iget-object v0, p2, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 1906
    :cond_1
    return-void
.end method

.method static hashCode(Landroid/content/res/Configuration;I)I
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "result"    # I

    .prologue
    .line 1893
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, p1}, Landroid/content/res/flymetheme/ConfigurationExt;->hashCode(I)I

    move-result v0

    return v0
.end method

.method static initFlymeExtraFields(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1862
    new-instance v0, Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-direct {v0}, Landroid/content/res/flymetheme/ConfigurationExt;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 1864
    return-void
.end method

.method static initFlymeExtraFields(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "o"    # Landroid/content/res/Configuration;

    .prologue
    .line 1856
    new-instance v0, Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-direct {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;-><init>(Landroid/content/res/flymetheme/ConfigurationExt;)V

    iput-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 1858
    return-void
.end method

.method static readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1883
    const-class v0, Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/flymetheme/ConfigurationExt;

    iput-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    .line 1884
    return-void
.end method

.method static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 1909
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    const-string/jumbo v1, "themeChanged"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 1910
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    const-string v1, "fontChanged"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 1911
    return-void
.end method

.method static updateFrom(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "changed"    # I

    .prologue
    .line 1868
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {v0, v1}, Landroid/content/res/flymetheme/ConfigurationExt;->updateFrom(Landroid/content/res/flymetheme/ConfigurationExt;)I

    move-result v0

    or-int/2addr v0, p2

    return v0
.end method

.method static writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;I)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1879
    iget-object v0, p0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1880
    return-void
.end method

.method static writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1914
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-eqz v0, :cond_0

    .line 1915
    const-string/jumbo v0, "themeChanged"

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1917
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-eqz v0, :cond_1

    .line 1918
    const-string v0, "fontChanged"

    iget-object v1, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1920
    :cond_1
    return-void
.end method
