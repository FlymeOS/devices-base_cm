.class public Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;
.super Ljava/lang/Object;
.source "LockscreenShortcutsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/LockscreenShortcutsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetInfo"
.end annotation


# instance fields
.field public colorFilter:Landroid/graphics/ColorFilter;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "colorFilter"    # Landroid/graphics/ColorFilter;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 81
    iput-object p2, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->colorFilter:Landroid/graphics/ColorFilter;

    .line 82
    iput-object p3, p0, Lcom/android/internal/util/cm/LockscreenShortcutsHelper$TargetInfo;->uri:Ljava/lang/String;

    .line 83
    return-void
.end method
