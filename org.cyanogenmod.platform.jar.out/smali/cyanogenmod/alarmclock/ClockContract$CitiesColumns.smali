.class public interface abstract Lcyanogenmod/alarmclock/ClockContract$CitiesColumns;
.super Ljava/lang/Object;
.source "ClockContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/alarmclock/ClockContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CitiesColumns"
.end annotation


# static fields
.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final CITY_NAME:Ljava/lang/String; = "city_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TIMEZONE_NAME:Ljava/lang/String; = "timezone_name"

.field public static final TIMEZONE_OFFSET:Ljava/lang/String; = "timezone_offset"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const-string/jumbo v0, "content://com.android.deskclock/cities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/alarmclock/ClockContract$CitiesColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 284
    return-void
.end method
