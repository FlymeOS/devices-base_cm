.class public Lcyanogenmod/providers/WeatherContract;
.super Ljava/lang/Object;
.source "WeatherContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/providers/WeatherContract$WeatherColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.cyanogenmod.weather"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "content://com.cyanogenmod.weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/WeatherContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
