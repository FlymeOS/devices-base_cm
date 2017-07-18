.class public interface abstract Landroid/content/DialogInterface;
.super Ljava/lang/Object;
.source "DialogInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/DialogInterface$OnCancelListener;,
        Landroid/content/DialogInterface$OnDismissListener;,
        Landroid/content/DialogInterface$OnShowListener;,
        Landroid/content/DialogInterface$OnClickListener;,
        Landroid/content/DialogInterface$OnMultiChoiceClickListener;,
        Landroid/content/DialogInterface$OnKeyListener;
    }
.end annotation


# static fields
.field public static final BUTTON1:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON2:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON3:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON_NEGATIVE:I = -0x2

.field public static final BUTTON_NEUTRAL:I = -0x3

.field public static final BUTTON_POSITIVE:I = -0x1


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract dismiss()V
.end method
