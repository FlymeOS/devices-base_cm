.class public Landroid/app/NotificationExt;
.super Ljava/lang/Object;
.source "NotificationExt.java"


# instance fields
.field public circleProgressBarColor:I

.field public circleProgressRimColor:I

.field public iconIntent:Landroid/app/PendingIntent;

.field public internalApp:I

.field public isCircleProgressBar:Z

.field public ledDoubleFlash:Z

.field public notificationBitmapIcon:Landroid/graphics/Bitmap;

.field public notificationIcon:I

.field public progressBarDrawable:I

.field public rightIcon:I

.field public simSlot:I

.field public subTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/NotificationExt;->simSlot:I

    .line 54
    iput-object v1, p0, Landroid/app/NotificationExt;->subTitle:Ljava/lang/CharSequence;

    .line 55
    iput-object v1, p0, Landroid/app/NotificationExt;->iconIntent:Landroid/app/PendingIntent;

    .line 25
    return-void
.end method
