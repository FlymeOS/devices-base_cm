.class public Lcyanogenmod/app/CustomTile$ExpandedListItem;
.super Lcyanogenmod/app/CustomTile$ExpandedItem;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedListItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedItem;-><init>(Lcyanogenmod/app/CustomTile$ExpandedItem;)V

    return-void
.end method


# virtual methods
.method public setExpandedListItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemBitmap(Landroid/graphics/Bitmap;)V

    .line 867
    return-void
.end method

.method public setExpandedListItemDrawable(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 856
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemDrawable(I)V

    .line 855
    return-void
.end method

.method public setExpandedListItemOnClickIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetOnClickPendingIntent(Landroid/app/PendingIntent;)V

    .line 847
    return-void
.end method

.method public setExpandedListItemSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemSummary(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public setExpandedListItemTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedListItem;->internalSetItemTitle(Ljava/lang/String;)V

    .line 831
    return-void
.end method
