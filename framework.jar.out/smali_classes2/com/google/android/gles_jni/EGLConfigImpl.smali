.class public Lcom/google/android/gles_jni/EGLConfigImpl;
.super Ljavax/microedition/khronos/egl/EGLConfig;
.source "EGLConfigImpl.java"


# instance fields
.field private mEGLConfig:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "config"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLConfig;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    .line 26
    return-void
.end method


# virtual methods
.method get()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/android/gles_jni/EGLConfigImpl;->mEGLConfig:J

    return-wide v0
.end method
