.class public Landroid/content/res/flymetheme/MtpkManager;
.super Ljava/lang/Object;
.source "MtpkManager.java"


# instance fields
.field mSystemZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

.field mZipFramework:Landroid/content/res/flymetheme/FlymeThemeZipFile;

.field mZipIcon:Landroid/content/res/flymetheme/FlymeThemeZipFile;

.field mZipPackage:Landroid/content/res/flymetheme/FlymeThemeZipFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeZipFile;

    invoke-direct {v0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipIcon:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    .line 16
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeZipFile;

    invoke-direct {v0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipPackage:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    .line 17
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeZipFile;

    invoke-direct {v0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipFramework:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    .line 18
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipIcon:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->clean()V

    .line 44
    iget-object v0, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipPackage:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->clean()V

    .line 45
    iget-object v0, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipFramework:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->clean()V

    .line 46
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->cleanConfigHelper()V

    .line 47
    return-void
.end method

.method public getStreamFromFramework(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "iStream":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipFramework:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    const-string v2, "framework-res"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public getStreamFromIcon(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "iStream":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipIcon:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    const-string v2, "icons"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method public getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "iStream":Ljava/io/InputStream;
    iget-object v1, p0, Landroid/content/res/flymetheme/MtpkManager;->mZipPackage:Landroid/content/res/flymetheme/FlymeThemeZipFile;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 27
    return-object v0
.end method

.method public setSystemThemeManager(Landroid/content/res/flymetheme/MtpkManager;)V
    .locals 0
    .param p1, "sysManager"    # Landroid/content/res/flymetheme/MtpkManager;

    .prologue
    .line 21
    iput-object p1, p0, Landroid/content/res/flymetheme/MtpkManager;->mSystemZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 22
    return-void
.end method
