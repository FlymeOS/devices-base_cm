.class Landroid/widget/DatePickerCalendarDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DatePickerCalendarDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentView:I

.field private final mListPosition:I

.field private final mListPositionOffset:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 775
    new-instance v0, Landroid/widget/DatePickerCalendarDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DatePickerCalendarDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 717
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    .line 726
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePickerCalendarDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/DatePickerCalendarDelegate$1;

    .prologue
    .line 685
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJIII)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "currentView"    # I
    .param p10, "listPosition"    # I
    .param p11, "listPositionOffset"    # I

    .prologue
    .line 702
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 703
    iput p2, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    .line 704
    iput p3, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    .line 705
    iput p4, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    .line 706
    iput-wide p5, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    .line 707
    iput-wide p7, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    .line 708
    iput p9, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    .line 709
    iput p10, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    .line 710
    iput p11, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    .line 711
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJIIILandroid/widget/DatePickerCalendarDelegate$1;)V
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # J
    .param p7, "x5"    # J
    .param p9, "x6"    # I
    .param p10, "x7"    # I
    .param p11, "x8"    # I
    .param p12, "x9"    # Landroid/widget/DatePickerCalendarDelegate$1;

    .prologue
    .line 685
    invoke-direct/range {p0 .. p11}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-void
.end method


# virtual methods
.method public getCurrentView()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    return v0
.end method

.method public getListPosition()I
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    return v0
.end method

.method public getListPositionOffset()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 758
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 754
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 730
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 731
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 735
    iget-wide v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 736
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mCurrentView:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate$SavedState;->mListPositionOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    return-void
.end method
