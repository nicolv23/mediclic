// Import stylesheets
import "../css/calendrier.css";

/**
 * TODO:
 */

var rendezVous = [];
const couleurs = [
  "red",
  "green",
  "blue",
  "yellow",
  "purple",
  "cyan",
  "gray",
  "limegreen",
  "pink",
  "orange",
  "magenta"
];
var heureOuverture = 8;
var intervalle = 15;
const jourSemaine = 7;
var eventContainer = document.getElementsByClassName("event-container")[0];
var maindims = eventContainer.getBoundingClientRect();
var sections = jourSemaine;
var rendezVousParJour = {};
var eventDate = document.getElementById("date");
var start = document.getElementById("starttime");
var end = document.getElementById("endtime");
var id = 1;

document.querySelector("button").onclick = function() {
  const evt = {
    id: id,
    starttime: start.value,
    endtime: end.value,
    date: eventDate.value,
    name: start.value
  };

  id++;
  eventContainer.innerHTML = "";
  rendezVous = [];
  rendezVous.push(evt);
  processEvents();
  loadEvents();
};

function processEvents() {
  rendezVous.forEach(evt => {
    const tableau = getCell(evt.starttime);

    // check if exist
    if (!rendezVousParJour[evt.date]) {
      rendezVousParJour[evt.date] = {};
      rendezVousParJour[evt.date][tableau] = [];
    }

    if (!rendezVousParJour[evt.date][tableau]) {
      rendezVousParJour[evt.date][tableau] = [];
    }

    rendezVousParJour[evt.date][tableau].push(evt);
  });
}


function getCell(starttime) {
  const h = +starttime.split(":")[0];
  return h - heureOuverture;
}
/**
 * sort by starttime
 */
function sortcomparer(e1, e2) {
  const t1start = timeFromString(e1.starttime);
  const t1end = timeFromString(e1.endtime);
  const t2start = timeFromString(e2.starttime);
  const t2end = timeFromString(e2.endtime);

  //return t1start.getTime() - t2start.getTime();
  const t1 = +(t1end - t1start);
  const t2 = +(t2end - t2start);

  return t2 - t1;
}

//loadEvents();

function loadEvents() {
  //sortEvents();
  //console.log(eventsByDay);
  Object.keys(rendezVousParJour).forEach(e => {
    const eventsForThisDay = rendezVousParJour[e];
    //console.log(eventsForThisDay);
    Object.keys(eventsForThisDay).forEach(c => {
      const events = eventsForThisDay[c];
      events.sort(sortcomparer);
      var totalEventsPerCell = events.length;
      var offset = 0;

      for (var i = 0; i < events.length; i++) {
        var event = events[i];

        const colPos = getColumnPosition(event.date);
        const perc = 100 / (sections + 1 - colPos);
        const percW = Math.floor(perc / totalEventsPerCell);

        var wMultiplier = 1.5;
        // for last one is just percW
        if (offset === totalEventsPerCell - 1) {
          wMultiplier = 0.95;
        }

        event["width"] = percW * wMultiplier;
        event["left"] = percW * offset;
        event["time"] = `${event.starttime} - ${event.endtime}`;
        renderEvent(event);

        ++offset;
      }
    });
  });
}

function renderEvent(evt) {
  var oneEvent = document.createElement("div");
  var eventStatus = document.createElement("div");
  var eventName = document.createElement("div");
  var eventTime = document.createElement("div");
  const color = Math.floor(Math.random() * couleurs.length);
  eventName.innerHTML = `${evt.id}`;
  eventTime.innerHTML = `${evt.time}`;

  oneEvent.appendChild(eventStatus);
  oneEvent.appendChild(eventName);
  oneEvent.appendChild(eventTime);
  eventName.setAttribute("class", "event-name");
  eventTime.setAttribute("class", "event-name");
  eventStatus.setAttribute("class", "event-status");
  oneEvent.setAttribute("class", "slot");

  /**
   * if two events have same start time
   */
  oneEvent.style.background = couleurs[color];
  oneEvent.style.width = evt.width + "%";
  oneEvent.style.left = evt.left + "%";
  oneEvent.style.zIndex = evt.zindex;
  oneEvent.style.height = getHeight(evt.starttime, evt.endtime) + "px";
  // 100 / ((8-colPos))
  oneEvent.style.gridColumnStart = getColumnPosition(evt.date);
  oneEvent.style.gridRowStart = getRowPosition(evt.starttime);

  /* add to event container */
  eventContainer.appendChild(oneEvent);
}

function getEventsForCell(starttime) {
  const h = starttime.split(":")[0];
  const eventsForCell = rendezVous.filter(e => e.starttime.split(":")[0] === h);
  return eventsForCell;
}

function getEventsForDay(day) {
  const eventsForDay = rendezVous.filter(e => e.date === day);
  return eventsForDay;
}
/**
 * given a start date returns the column position
 *
 * input: startdate (yy-mm-dd)
 */
function getColumnPosition(startdate) {
  const y = +startdate.split("-")[0];
  const m = +startdate.split("-")[1];
  const d = +startdate.split("-")[2];

  const date = new Date(y, m - 1, d);
  return date.getDay() + 1;
}

/**
 * given start time returns the row position
 *
 * input: starttime (x:xx)
 */
function getRowPosition(starttime) {
  const h = +starttime.split(":")[0];
  const m = +starttime.split(":")[1];
  const totalMinutes = Math.abs(heureOuverture - h) * 60 + m;
  const rowPos = totalMinutes / intervalle + 1;

  return rowPos;
}

/**
 * given start and end times will return the height in px
 *
 * start: x:xx
 * end: x:xx
 */
function getHeight(starttime, endtime) {
  const starthour = starttime.split(":")[0];
  const startmin = starttime.split(":")[1];
  const endhour = endtime.split(":")[0];
  const endmin = endtime.split(":")[1];

  var datestart = new Date();
  var dateend = new Date();
  datestart.setHours(parseInt(starthour));
  datestart.setMinutes(parseInt(startmin));

  dateend.setHours(parseInt(endhour));
  dateend.setMinutes(parseInt(endmin));

  var duration = Math.abs(datestart.valueOf() - dateend.valueOf()) / 1000;
  return duration / 60;
}

function timeFromString(string, local) {
  var d = new Date(0);

  var h = string.split(":")[0];
  var m = string.split(":")[1];

  d.setHours(h);
  d.setMinutes(m);

  return d;
}

/**
 *  fmt: "yyyy-mm-dd"
 */
function dateFromString(string, local) {
  var d = new Date(0);

  const y = +string.split("-")[0];
  const m = +string.split("-")[1];
  const day = +string.split("-")[2];

  d.setFullYear(y, m, d);
  d.setMonth(m);
  d.setDate(day);

  return d;
}
