.class public Lcyanogenmod/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/media/MediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field public static final ACTION_HOTWORD_INPUT_CHANGED:Ljava/lang/String; = "com.cyanogenmod.intent.action.HOTWORD_INPUT_CHANGED"

.field public static final CAPTURE_AUDIO_HOTWORD_PERMISSION:Ljava/lang/String; = "android.permission.CAPTURE_AUDIO_HOTWORD"

.field public static final EXTRA_CURRENT_PACKAGE_NAME:Ljava/lang/String; = "com.cyanogenmod.intent.extra.CURRENT_PACKAGE_NAME"

.field public static final EXTRA_HOTWORD_INPUT_STATE:Ljava/lang/String; = "com.cyanogenmod.intent.extra.HOTWORD_INPUT_STATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
