.class Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "CalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract$EventsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_ATTENDEE_EMAIL:I = 0x1

.field private static final COLUMN_ATTENDEE_IDENTITY:I = 0x5

.field private static final COLUMN_ATTENDEE_ID_NAMESPACE:I = 0x6

.field private static final COLUMN_ATTENDEE_NAME:I = 0x0

.field private static final COLUMN_ATTENDEE_RELATIONSHIP:I = 0x2

.field private static final COLUMN_ATTENDEE_STATUS:I = 0x4

.field private static final COLUMN_ATTENDEE_TYPE:I = 0x3

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_METHOD:I = 0x1

.field private static final COLUMN_MINUTES:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

.field private static final EXTENDED_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static final WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"


# instance fields
.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1313
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "minutes"

    aput-object v1, v0, v3

    const-string/jumbo v1, "method"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 1320
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v5

    const-string v1, "attendeeType"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "attendeeIdentity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "attendeeIdNamespace"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 1337
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "provider"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 1355
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1356
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1357
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1358
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1349
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 1350
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 1351
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 1352
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1363
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1364
    .local v12, "eventId":J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1365
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1366
    const-string v2, "calendar_id"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1367
    const-string/jumbo v2, "title"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1368
    const-string v2, "description"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1369
    const-string v2, "eventLocation"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1370
    const-string v2, "eventStatus"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1371
    const-string/jumbo v2, "selfAttendeeStatus"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1372
    const-string v2, "dtstart"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1373
    const-string v2, "dtend"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1374
    const-string v2, "duration"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1375
    const-string v2, "eventTimezone"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1376
    const-string v2, "eventEndTimezone"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1377
    const-string v2, "allDay"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1378
    const-string v2, "accessLevel"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1379
    const-string v2, "availability"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1380
    const-string v2, "eventColor"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1381
    const-string v2, "eventColor_index"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1382
    const-string v2, "hasAlarm"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1383
    const-string v2, "hasExtendedProperties"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1385
    const-string/jumbo v2, "rrule"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v2, "rdate"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1387
    const-string v2, "exrule"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1388
    const-string v2, "exdate"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1389
    const-string/jumbo v2, "original_sync_id"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1390
    const-string/jumbo v2, "original_id"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v2, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v2, "originalAllDay"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1394
    const-string v2, "lastDate"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1395
    const-string v2, "hasAttendeeData"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1396
    const-string v2, "guestsCanInviteOthers"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1398
    const-string v2, "guestsCanModify"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1399
    const-string v2, "guestsCanSeeGuests"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1400
    const-string v2, "customAppPackage"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1401
    const-string v2, "customAppUri"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1402
    const-string/jumbo v2, "uid2445"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1403
    const-string/jumbo v2, "organizer"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1404
    const-string v2, "isOrganizer"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1405
    const-string v2, "_sync_id"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1406
    const-string v2, "dirty"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1407
    const-string/jumbo v2, "mutators"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1408
    const-string v2, "lastSynced"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1409
    const-string v2, "deleted"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v2, "sync_data1"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1411
    const-string/jumbo v2, "sync_data2"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1412
    const-string/jumbo v2, "sync_data3"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1413
    const-string/jumbo v2, "sync_data4"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1414
    const-string/jumbo v2, "sync_data5"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1415
    const-string/jumbo v2, "sync_data6"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1416
    const-string/jumbo v2, "sync_data7"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1417
    const-string/jumbo v2, "sync_data8"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v2, "sync_data9"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1419
    const-string/jumbo v2, "sync_data10"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1420
    const-string v2, "cal_sync1"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1421
    const-string v2, "cal_sync2"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1422
    const-string v2, "cal_sync3"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1423
    const-string v2, "cal_sync4"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1424
    const-string v2, "cal_sync5"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1425
    const-string v2, "cal_sync6"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1426
    const-string v2, "cal_sync7"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1427
    const-string v2, "cal_sync8"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1428
    const-string v2, "cal_sync9"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1429
    const-string v2, "cal_sync10"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1431
    new-instance v10, Landroid/content/Entity;

    invoke-direct {v10, v9}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1433
    .local v10, "entity":Landroid/content/Entity;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1445
    .local v15, "subCursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1446
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1447
    .local v14, "reminderValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "minutes"

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1448
    const-string/jumbo v2, "method"

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1449
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v2, v14}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1452
    .end local v14    # "reminderValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1439
    .end local v15    # "subCursor":Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .restart local v15    # "subCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 1452
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_2

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1467
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1468
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1469
    .local v8, "attendeeValues":Landroid/content/ContentValues;
    const-string v2, "attendeeName"

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v2, "attendeeEmail"

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v2, "attendeeRelationship"

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    const-string v2, "attendeeType"

    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1477
    const-string v2, "attendeeStatus"

    const/4 v3, 0x4

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1479
    const-string v2, "attendeeIdentity"

    const/4 v3, 0x5

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v2, "attendeeIdNamespace"

    const/4 v3, 0x6

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v2, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1486
    .end local v8    # "attendeeValues":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1461
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_1

    .line 1486
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_4

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1501
    :goto_2
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1502
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1503
    .local v11, "extendedValues":Landroid/content/ContentValues;
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string/jumbo v2, "name"

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string/jumbo v2, "value"

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    sget-object v2, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v2, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 1512
    .end local v11    # "extendedValues":Landroid/content/ContentValues;
    :catchall_2
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1495
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_2

    .line 1512
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1515
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1516
    return-object v10
.end method
