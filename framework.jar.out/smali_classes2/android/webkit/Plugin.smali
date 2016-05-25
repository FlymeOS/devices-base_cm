.class public Landroid/webkit/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Plugin$1;,
        Landroid/webkit/Plugin$DefaultClickHandler;,
        Landroid/webkit/Plugin$PreferencesClickHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/webkit/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$1;)V

    iput-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 70
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/Plugin;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/Plugin;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchClickEvent(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkit/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    .line 184
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setClickHandler(Landroid/webkit/Plugin$PreferencesClickHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/webkit/Plugin$PreferencesClickHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 170
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
