.class public Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
.super Ljava/lang/Object;
.source "ExternalQuickSettingsRecord.java"


# instance fields
.field public isCanceled:Z

.field public isUpdate:Z

.field public final sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;


# direct methods
.method public constructor <init>(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "tile"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    .line 34
    return-void
.end method


# virtual methods
.method public getCustomTile()Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getCustomTile()Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v0

    return v0
.end method
