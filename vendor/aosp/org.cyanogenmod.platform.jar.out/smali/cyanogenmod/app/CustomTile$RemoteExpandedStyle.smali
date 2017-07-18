.class public Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;
.super Lcyanogenmod/app/CustomTile$ExpandedStyle;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteExpandedStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Lcyanogenmod/app/CustomTile$ExpandedStyle;)V

    .line 576
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;->internalStyleId(I)V

    .line 575
    return-void
.end method


# virtual methods
.method public setRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;->internalSetRemoteViews(Landroid/widget/RemoteViews;)V

    .line 583
    return-void
.end method
